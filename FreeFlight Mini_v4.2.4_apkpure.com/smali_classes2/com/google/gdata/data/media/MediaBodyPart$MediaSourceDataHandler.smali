.class Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;
.super Ljavax/activation/DataHandler;
.source "MediaBodyPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/media/MediaBodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSourceDataHandler"
.end annotation


# instance fields
.field source:Lcom/google/gdata/data/media/MediaSource;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/media/MediaSource;)V
    .locals 0
    .param p1, "ds"    # Lcom/google/gdata/data/media/MediaSource;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;->source:Lcom/google/gdata/data/media/MediaSource;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/media/MediaSource;Lcom/google/gdata/data/media/MediaBodyPart$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/media/MediaSource;
    .param p2, "x1"    # Lcom/google/gdata/data/media/MediaBodyPart$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;-><init>(Lcom/google/gdata/data/media/MediaSource;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;->source:Lcom/google/gdata/data/media/MediaSource;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;->source:Lcom/google/gdata/data/media/MediaSource;

    invoke-static {v0, p1}, Lcom/google/gdata/data/media/MediaSource$Output;->writeTo(Lcom/google/gdata/data/media/MediaSource;Ljava/io/OutputStream;)V

    .line 75
    return-void
.end method
