.class public Lcom/google/gdata/wireformats/output/media/MediaGenerator;
.super Ljava/lang/Object;
.source "MediaGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/output/OutputGenerator",
        "<",
        "Lcom/google/gdata/data/media/MediaSource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/media/MediaSource;)V
    .locals 0
    .param p1, "contentStream"    # Ljava/io/OutputStream;
    .param p2, "request"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "source"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p3, p1}, Lcom/google/gdata/data/media/MediaSource$Output;->writeTo(Lcom/google/gdata/data/media/MediaSource;Ljava/io/OutputStream;)V

    .line 55
    return-void
.end method

.method public bridge synthetic generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p3, Lcom/google/gdata/data/media/MediaSource;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/media/MediaGenerator;->generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/media/MediaSource;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/media/MediaSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Lcom/google/gdata/data/media/MediaSource;

    return-object v0
.end method
