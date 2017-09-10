.class Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "MyFlightsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/academy/MyFlightsActivity;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AVATAR_REQUEST:I = 0x0

.field public static final TYPE_MY_FLIGHTS_REQUEST:I = 0x2

.field public static final TYPE_PILOT_REQUEST:I = 0x1


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 336
    iput p2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mType:I

    .line 337
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
    .line 361
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 341
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .line 342
    .local v0, "activity":Lcom/parrot/freeflight/academy/MyFlightsActivity;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 343
    iget v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 357
    .end local p1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 345
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$700(Lcom/parrot/freeflight/academy/MyFlightsActivity;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    goto :goto_0

    .line 351
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$800(Lcom/parrot/freeflight/academy/MyFlightsActivity;Ljava/util/List;)V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
