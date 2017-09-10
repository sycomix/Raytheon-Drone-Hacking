.class Lcom/parrot/freeflight/core/academy/MediaManager$2;
.super Landroid/support/v4/util/LruCache;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p2, "x0"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$2;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 109
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/MediaManager$2;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
