.class public Lcom/parrot/freeflight/media/model/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/media/model/FileItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/parrot/freeflight/media/model/FileItem$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/media/model/FileItem$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/media/model/FileItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/armedia/ARMediaObject;

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/FileItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/freeflight/media/model/FileItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/freeflight/media/model/FileItem$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/model/FileItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/media/model/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/FileItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    return-void
.end method
