.class Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "ProfileEditController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileEditController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation


# static fields
.field public static final TYPE_AVATAR_UPDATE:I = 0x0

.field public static final TYPE_EMAIL_UPDATE:I = 0x1

.field public static final TYPE_PROFILE_DELETE:I = 0x3

.field public static final TYPE_PROFILE_UPDATE:I = 0x2


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditController;I)V
    .locals 0
    .param p1, "view"    # Lcom/parrot/freeflight/academy/ProfileEditController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 259
    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;->mType:I

    .line 260
    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V
    .locals 5
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extra"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f0801a0

    .line 287
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditController;

    .line 288
    .local v0, "controller":Lcom/parrot/freeflight/academy/ProfileEditController;
    if-eqz v0, :cond_0

    .line 289
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 293
    :pswitch_0
    const-string v1, "ProfileEditController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->access$400(Lcom/parrot/freeflight/academy/ProfileEditController;Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 295
    const v1, 0x7f08048c

    invoke-virtual {v0, v1, v4}, Lcom/parrot/freeflight/academy/ProfileEditController;->showErrorDialog(II)V

    goto :goto_0

    .line 298
    :pswitch_1
    sget-object v1, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->access$400(Lcom/parrot/freeflight/academy/ProfileEditController;Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 299
    const v1, 0x7f080480

    invoke-virtual {v0, v4, v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->showErrorDialog(II)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
    .line 264
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditController;

    .line 265
    .local v0, "controller":Lcom/parrot/freeflight/academy/ProfileEditController;
    if-eqz v0, :cond_0

    .line 266
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 268
    :pswitch_0
    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->access$000(Lcom/parrot/freeflight/academy/ProfileEditController;)V

    goto :goto_0

    .line 271
    :pswitch_1
    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->access$100(Lcom/parrot/freeflight/academy/ProfileEditController;)V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->access$200(Lcom/parrot/freeflight/academy/ProfileEditController;)V

    goto :goto_0

    .line 277
    :pswitch_3
    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->access$300(Lcom/parrot/freeflight/academy/ProfileEditController;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
