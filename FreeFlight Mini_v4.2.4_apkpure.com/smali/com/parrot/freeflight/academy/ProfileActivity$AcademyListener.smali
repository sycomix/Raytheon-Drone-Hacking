.class Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/academy/ProfileActivity;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AVATAR_REQUEST:I = 0x0

.field public static final TYPE_OTHER_PILOT_REQUEST:I = 0x2

.field public static final TYPE_PILOT_REQUEST:I = 0x1


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/ProfileActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 325
    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mType:I

    .line 326
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
    .line 350
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileActivity;

    .line 351
    .local v0, "activity":Lcom/parrot/freeflight/academy/ProfileActivity;
    if-eqz v0, :cond_0

    .line 352
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1100(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 330
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileActivity;

    .line 331
    .local v0, "activity":Lcom/parrot/freeflight/academy/ProfileActivity;
    if-eqz v0, :cond_0

    .line 332
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1100(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1200(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1300(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
