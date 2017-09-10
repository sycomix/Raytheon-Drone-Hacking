.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "MyFlightsDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcademyRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ref"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .line 639
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 640
    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V
    .locals 2
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extra"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 652
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .line 653
    .local v0, "activity":Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    if-eqz v0, :cond_0

    .line 654
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$2100(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)V

    .line 656
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 644
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .line 645
    .local v0, "activity":Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    if-eqz v0, :cond_0

    .line 646
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$2100(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)V

    .line 648
    :cond_0
    return-void
.end method
