.class public interface abstract Lcom/google/gdata/data/IAtom;
.super Ljava/lang/Object;
.source "IAtom.java"


# virtual methods
.method public abstract addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
.end method

.method public abstract getAuthors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/gdata/data/IPerson;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategories()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/google/gdata/data/ICategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEtag()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getKind()Ljava/lang/String;
.end method

.method public abstract getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
.end method

.method public abstract getLinks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/gdata/data/ILink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelfLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getTitle()Lcom/google/gdata/data/ITextConstruct;
.end method

.method public abstract getUpdated()Lcom/google/gdata/data/DateTime;
.end method

.method public abstract getVersionId()Ljava/lang/String;
.end method

.method public abstract removeLinks()V
.end method

.method public abstract removeLinks(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEtag(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setKind(Ljava/lang/String;)V
.end method

.method public abstract setService(Lcom/google/gdata/client/Service;)V
.end method

.method public abstract setUpdated(Lcom/google/gdata/data/DateTime;)V
.end method

.method public abstract setVersionId(Ljava/lang/String;)V
.end method
