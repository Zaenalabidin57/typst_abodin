package com.example.latihan_6_webview;


import android.net.Uri;
import android.os.Bundle;
//import androidx.activity.enableEdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.widget.Toast;
import android.webkit.DownloadListener;
import android.app.DownloadManager;

public class MainActivity extends AppCompatActivity {
    WebView web;
    String url;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        url = "https://journal.umpo.ac.id/index.php/multitek";
        web = (WebView) findViewById(R.id.webView);
        web.getSettings().setJavaScriptEnabled(true);
        web.loadUrl(url);
        web.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
        web.setWebViewClient(new myWebViewClient());

        if (checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_DENIED) {
            Log.d("permission", "Denied WRITE EXTERNAL STORAGE");
            String[] permission = new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE};
            requestPermissions(permission, 1);
        }

        web.setDownloadListener(new DownloadListener() {
            @Override
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
                request.setMimeType(mimetype);
                String cookies = CookieManager.getInstance().getCookie(url);
                request.addRequestHeader("Cookie", cookies);
                request.addRequestHeader("User-Agent", userAgent);
                request.setDescription("Downloading File...");
                request.setTitle("Download File");
                request.allowScanningByMediaScanner();
                request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, URLUtil.guessFileName(url, contentDisposition, mimetype));
                DownloadManager dm = (DownloadManager) getSystemService(DOWNLOAD_SERVICE);
                dm.enqueue(request);
                Toast.makeText(getApplicationContext(), "Downloading File",
                        Toast.LENGTH_LONG).show();

            }
        });
    }

    @Override
        public void onBackPressed() {
            if (web.canGoBack()) {
                web.goBack();
            } else {
                super.onBackPressed();
            }

        }


            private class myWebViewClient extends WebViewClient {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        }}



