.class Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "ProfileEditPage1View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage1View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation


# static fields
.field public static final TYPE_AVATAR_REQUEST:I


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage1View;I)V
    .locals 0
    .param p1, "view"    # Lcom/parrot/freeflight/academy/ProfileEditPage1View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 205
    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;->mType:I

    .line 206
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
    .line 224
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    .line 225
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileEditPage1View;
    if-eqz v0, :cond_0

    .line 226
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->access$100(Lcom/parrot/freeflight/academy/ProfileEditPage1View;Ljava/lang/Object;)V

    goto :goto_0

    .line 226
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
    .line 210
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditPage1View;

    .line 211
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileEditPage1View;
    if-eqz v0, :cond_0

    .line 212
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage1View$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileEditPage1View;->access$100(Lcom/parrot/freeflight/academy/ProfileEditPage1View;Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
