.class public abstract Lcom/google/gdata/data/health/BaseHealthFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "BaseHealthFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/health/BaseHealthFeed;",
        "E:",
        "Lcom/google/gdata/data/health/BaseHealthEntry;",
        ">",
        "Lcom/google/gdata/data/BaseFeed",
        "<TF;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/gdata/data/health/BaseHealthFeed;, "Lcom/google/gdata/data/health/BaseHealthFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/gdata/data/health/BaseHealthFeed;, "Lcom/google/gdata/data/health/BaseHealthFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 49
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/data/health/BaseHealthFeed;, "Lcom/google/gdata/data/health/BaseHealthFeed<TF;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BaseHealthFeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
