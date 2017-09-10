.class public Lcom/google/gdata/client/books/VolumeQuery;
.super Lcom/google/gdata/client/Query;
.source "VolumeQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/books/VolumeQuery$MinViewability;
    }
.end annotation


# instance fields
.field private ebook:Ljava/lang/String;

.field private minViewability:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 34
    sget-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->NONE:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    iput-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery;->minViewability:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .line 74
    return-void
.end method


# virtual methods
.method public getEbook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery;->ebook:Ljava/lang/String;

    return-object v0
.end method

.method public getMinViewability()Lcom/google/gdata/client/books/VolumeQuery$MinViewability;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery;->minViewability:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    return-object v0
.end method

.method public setEbook(Ljava/lang/String;)V
    .locals 1
    .param p1, "ebook"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery;->ebook:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 95
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/books/VolumeQuery;->ebook:Ljava/lang/String;

    .line 96
    const-string v0, "ebook"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/books/VolumeQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery;->ebook:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setMinViewability(Lcom/google/gdata/client/books/VolumeQuery$MinViewability;)V
    .locals 2
    .param p1, "minViewability"    # Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    sget-object p1, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->NONE:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/books/VolumeQuery;->minViewability:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/google/gdata/client/books/VolumeQuery;->minViewability:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    .line 123
    const-string v1, "min-viewability"

    sget-object v0, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->NONE:Lcom/google/gdata/client/books/VolumeQuery$MinViewability;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/books/VolumeQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    return-void

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/client/books/VolumeQuery$MinViewability;->toValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
