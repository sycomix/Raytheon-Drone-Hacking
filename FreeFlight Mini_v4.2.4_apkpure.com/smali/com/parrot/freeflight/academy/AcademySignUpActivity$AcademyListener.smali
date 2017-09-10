.class Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "AcademySignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/AcademySignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation


# static fields
.field public static final TYPE_CONNECTION:I = 0x1

.field public static final TYPE_PROFILE_CREATION:I


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 239
    iput p2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;->mType:I

    .line 240
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
    .line 261
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .line 262
    .local v0, "activity":Lcom/parrot/freeflight/academy/AcademySignUpActivity;
    if-eqz v0, :cond_0

    .line 263
    iget v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 274
    .end local p2    # "extra":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 265
    .restart local p2    # "extra":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "extra":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->access$400(Lcom/parrot/freeflight/academy/AcademySignUpActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .restart local p2    # "extra":Ljava/lang/Object;
    :pswitch_1
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->access$500(Lcom/parrot/freeflight/academy/AcademySignUpActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    goto :goto_0

    .line 263
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
    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .line 245
    .local v0, "activity":Lcom/parrot/freeflight/academy/AcademySignUpActivity;
    if-eqz v0, :cond_0

    .line 246
    iget v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->access$200(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->access$300(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
