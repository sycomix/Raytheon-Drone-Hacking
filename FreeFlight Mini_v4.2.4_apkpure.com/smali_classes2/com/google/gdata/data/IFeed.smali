.class public interface abstract Lcom/google/gdata/data/IFeed;
.super Ljava/lang/Object;
.source "IFeed.java"

# interfaces
.implements Lcom/google/gdata/data/IAtom;


# virtual methods
.method public abstract createEntry()Lcom/google/gdata/data/IEntry;
.end method

.method public abstract getCanPost()Z
.end method

.method public abstract getEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/gdata/data/IEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryPostLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getFeedBatchLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getGenerator()Lcom/google/gdata/data/IGenerator;
.end method

.method public abstract getItemsPerPage()I
.end method

.method public abstract getLogo()Ljava/lang/String;
.end method

.method public abstract getNextLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getPreviousLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getStartIndex()I
.end method

.method public abstract getSubtitle()Lcom/google/gdata/data/ITextConstruct;
.end method

.method public abstract getTotalResults()I
.end method

.method public abstract setCanPost(Z)V
.end method

.method public abstract setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/IGenerator;
.end method

.method public abstract setItemsPerPage(I)V
.end method

.method public abstract setLogo(Ljava/lang/String;)V
.end method

.method public abstract setStartIndex(I)V
.end method

.method public abstract setTotalResults(I)V
.end method
