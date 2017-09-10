.class Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "ProfileEditPage3View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage3View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation


# static fields
.field public static final TYPE_ALL_COUNTRY_REQUEST:I


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage3View;I)V
    .locals 0
    .param p1, "view"    # Lcom/parrot/freeflight/academy/ProfileEditPage3View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 185
    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;->mType:I

    .line 186
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
    .line 204
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditPage3View;

    .line 191
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileEditPage3View;
    if-eqz v0, :cond_0

    .line 192
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileEditPage3View;->access$000(Lcom/parrot/freeflight/academy/ProfileEditPage3View;Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
