.class Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewHeight:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final imageViewWidth:I

.field final synthetic this$0:Lcom/parrot/freeflight/core/BitmapCache;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/BitmapCache;Landroid/widget/ImageView;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/BitmapCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 86
    iput p3, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->imageViewWidth:I

    .line 87
    iput p4, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->imageViewHeight:I

    .line 88
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-static {v1}, Lcom/parrot/freeflight/core/BitmapCache;->access$000(Lcom/parrot/freeflight/core/BitmapCache;)Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->imageViewWidth:I

    iget v4, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->imageViewHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache;->access$100(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    aget-object v2, p1, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 95
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
