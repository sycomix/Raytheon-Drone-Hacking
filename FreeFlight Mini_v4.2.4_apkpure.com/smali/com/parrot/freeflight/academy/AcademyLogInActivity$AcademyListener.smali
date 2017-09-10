.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "AcademyLogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/AcademyLogInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/academy/AcademyLogInActivity;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_LOGIN:I = 0x0

.field public static final TYPE_RESET_PASSWORD:I = 0x1


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 496
    iput p2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;->mType:I

    .line 497
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
    .line 517
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .line 518
    .local v0, "activity":Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    if-eqz v0, :cond_0

    .line 519
    iget v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 528
    .end local p2    # "extra":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 521
    .restart local p2    # "extra":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$700(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    goto :goto_0

    .line 524
    :pswitch_1
    check-cast p2, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;

    .end local p2    # "extra":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$800(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 501
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .line 502
    .local v0, "activity":Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    if-eqz v0, :cond_0

    .line 503
    iget v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 513
    .end local p1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$500(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    .line 506
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOk()V

    goto :goto_0

    .line 509
    :pswitch_1
    check-cast p1, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$600(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
