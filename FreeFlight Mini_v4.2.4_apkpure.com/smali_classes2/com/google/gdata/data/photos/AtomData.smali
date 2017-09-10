.class public interface abstract Lcom/google/gdata/data/photos/AtomData;
.super Ljava/lang/Object;
.source "AtomData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/Extensible;


# virtual methods
.method public abstract getAuthors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategories()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContributors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Lcom/google/gdata/data/TextConstruct;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLinks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRights()Lcom/google/gdata/data/TextConstruct;
.end method

.method public abstract getTitle()Lcom/google/gdata/data/TextConstruct;
.end method

.method public abstract getUpdated()Lcom/google/gdata/data/DateTime;
.end method

.method public abstract setDescription(Lcom/google/gdata/data/TextConstruct;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setRights(Lcom/google/gdata/data/TextConstruct;)V
.end method

.method public abstract setTitle(Lcom/google/gdata/data/TextConstruct;)V
.end method

.method public abstract setUpdated(Lcom/google/gdata/data/DateTime;)V
.end method
