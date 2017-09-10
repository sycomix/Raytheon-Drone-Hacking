.class Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
.super Landroid/os/AsyncTask;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAvatarTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_AVATAR:Ljava/lang/String; = "http://academy.ardrone.com/media/"


# instance fields
.field private mError:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/academy/AcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    .line 1306
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 1310
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->addListener(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 1311
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 10
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://academy.ardrone.com/media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "avatarUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1324
    .local v6, "urlInputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1326
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1327
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1328
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1332
    if-eqz v6, :cond_0

    .line 1334
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1340
    .end local v5    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 1341
    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2300(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0087

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 1344
    .local v0, "avatarSize":I
    invoke-static {v2, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1345
    invoke-static {v2, v1}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1347
    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2300(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v4

    .line 1348
    .local v4, "roundedBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 1349
    invoke-virtual {v4, v9}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 1350
    invoke-virtual {v4, v9}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 1355
    .end local v0    # "avatarSize":I
    .end local v4    # "roundedBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :goto_1
    return-object v4

    .line 1329
    :catch_0
    move-exception v3

    .line 1330
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v7, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1332
    if-eqz v6, :cond_0

    .line 1334
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1335
    :catch_1
    move-exception v7

    goto :goto_0

    .line 1332
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_1

    .line 1334
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1336
    :cond_1
    :goto_2
    throw v7

    .line 1355
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1335
    .restart local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v5    # "url":Ljava/net/URL;
    :catch_3
    move-exception v8

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1300
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->doInBackground([Ljava/lang/String;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1377
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1378
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 1379
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    goto :goto_0

    .line 1381
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1382
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$902(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .line 1383
    return-void
.end method

.method protected onPostExecute(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 4
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1361
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq v1, v2, :cond_0

    .line 1362
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 1363
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    goto :goto_0

    .line 1366
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1002(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 1367
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 1368
    .restart local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1000(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 1371
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1372
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$902(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .line 1373
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 1300
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->onPostExecute(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    return-void
.end method
