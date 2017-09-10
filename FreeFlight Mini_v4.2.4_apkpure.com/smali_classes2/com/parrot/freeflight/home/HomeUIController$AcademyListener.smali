.class Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "HomeUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/home/HomeUIController;",
        "Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "controller"    # Lcom/parrot/freeflight/home/HomeUIController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 1370
    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extra"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1382
    return-void
.end method

.method public onSuccess(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 2
    .param p1, "result"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1374
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/home/HomeUIController;

    .line 1375
    .local v0, "controller":Lcom/parrot/freeflight/home/HomeUIController;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1376
    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$4000(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1378
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1367
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController$AcademyListener;->onSuccess(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    return-void
.end method
