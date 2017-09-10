.class final Lcom/parrot/freeflight/core/academy/MediaInfos$1;
.super Ljava/lang/Object;
.source "MediaInfos.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parrot/freeflight/core/academy/MediaInfos;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 105
    new-instance v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/core/academy/MediaInfos;-><init>(Landroid/os/Parcel;Lcom/parrot/freeflight/core/academy/MediaInfos$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaInfos$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parrot/freeflight/core/academy/MediaInfos;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parrot/freeflight/core/academy/MediaInfos;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 100
    new-array v0, p1, [Lcom/parrot/freeflight/core/academy/MediaInfos;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaInfos$1;->newArray(I)[Lcom/parrot/freeflight/core/academy/MediaInfos;

    move-result-object v0

    return-object v0
.end method
