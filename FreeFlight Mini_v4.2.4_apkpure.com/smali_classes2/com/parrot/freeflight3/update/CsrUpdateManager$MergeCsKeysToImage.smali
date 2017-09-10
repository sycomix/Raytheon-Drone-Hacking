.class Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;
.super Landroid/os/AsyncTask;
.source "CsrUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeCsKeysToImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;Lcom/parrot/freeflight3/update/CsrUpdateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p2, "x1"    # Lcom/parrot/freeflight3/update/CsrUpdateManager$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "filePath"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 154
    new-instance v8, Ljava/io/File;

    aget-object v0, p1, v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v8, "imgFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v10, v2

    .line 156
    .local v10, "size":I
    new-array v1, v10, [B

    .line 157
    .local v1, "data":[B
    const/4 v9, 0x0

    .line 159
    .local v9, "rtn":Z
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .local v6, "buf":Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {v6, v1, v0, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 161
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$500(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v3}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$600(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$700(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v5}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$800(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setImageData([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 162
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v6    # "buf":Ljava/io/BufferedInputStream;
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v7

    .line 164
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 165
    const/4 v9, 0x0

    .line 169
    goto :goto_0

    .line 166
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 167
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->sendNextImageChunk()V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
