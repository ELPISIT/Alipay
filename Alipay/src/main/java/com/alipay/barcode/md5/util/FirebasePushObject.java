package com.alipay.barcode.md5.util;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/**
 * Example of Firebase push.
 *
 * @author javaQuery
 * @date 22nd September, 2016
 * @Github: https://github.com/javaquery/Examples
 */
public class FirebasePushObject {
    private FirebaseDatabase firebaseDatabase;

    public void print(Map<String,String> params, String result) {
        if(params.isEmpty()||(params==null)){
            params=new HashMap<String,String>();
        }
        if(result==null){
            result="No Data";
        }
        Item item=new Item();
        item.setId(1L);
        item.setData(params);
        item.setResult(result);
        new FirebasePushObject().saveUsingPush(item);
    }

    /**
     * initialize firebase.
     */
    private void initFirebase() {
        try {
            // .setDatabaseUrl("https://fir-66f50.firebaseio.com") - Firebase project url.
            // .setServiceAccount(new FileInputStream(new File("filepath"))) - Firebase private key file path.
            FirebaseOptions firebaseOptions = new FirebaseOptions.Builder()
                    .setDatabaseUrl("https://boswinalipay.firebaseio.com")
                    .setCredentials(GoogleCredentials.fromStream(new FileInputStream("/home/ubuntu/mora/serviceAccount.json")))
                    .build();

            FirebaseApp.initializeApp(firebaseOptions);
            firebaseDatabase = FirebaseDatabase.getInstance();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Save item object in Firebase.
     * @param item
     */
    private void saveUsingPush(Item item) {
        if (item != null) {
            initFirebase();

            /* Get database root reference */
            DatabaseReference databaseReference = firebaseDatabase.getReference("/");

            /* Get existing child or will be created new child. */
            DatabaseReference childReference = databaseReference.child("items");

            /**
             * The Firebase Java client uses daemon threads, meaning it will not prevent a process from exiting.
             * So we'll wait(countDownLatch.await()) until firebase saves record. Then decrement `countDownLatch` value
             * using `countDownLatch.countDown()` and application will continues its execution.
             */
            CountDownLatch countDownLatch = new CountDownLatch(1);

            /**
             * push()
             * Add to a list of data in the database. Every time you push a new node onto a list,
             * your database generates a unique key, like items/unique-item-id/data
             */
            childReference.push().setValue(item, new DatabaseReference.CompletionListener() {

                @Override
                public void onComplete(DatabaseError de, DatabaseReference dr) {
                    System.out.println("Record saved!");
                    // decrement countDownLatch value and application will be continues its execution.
                    countDownLatch.countDown();
                }
            });
            try {
                //wait for firebase to saves record.
                countDownLatch.await();
            } catch (InterruptedException ex) {
                ex.printStackTrace();
            }
        }
    }
}