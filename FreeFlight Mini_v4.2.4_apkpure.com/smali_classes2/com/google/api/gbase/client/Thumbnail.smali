.class public final Lcom/google/api/gbase/client/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# instance fields
.field private height:Ljava/lang/Integer;

.field private url:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final equalsPossibleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final hashCodePossibleNulls(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "a":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    const/16 v0, 0x29

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/api/gbase/client/Thumbnail;

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 105
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 108
    check-cast v0, Lcom/google/api/gbase/client/Thumbnail;

    .line 109
    .local v0, "that":Lcom/google/api/gbase/client/Thumbnail;
    iget-object v3, p0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/api/gbase/client/Thumbnail;->equalsPossibleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/api/gbase/client/Thumbnail;->equalsPossibleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/api/gbase/client/Thumbnail;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/api/gbase/client/Thumbnail;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/api/gbase/client/Thumbnail;->equalsPossibleNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/api/gbase/client/Thumbnail;->isSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Size is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/api/gbase/client/Thumbnail;->isSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Size is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/api/gbase/client/Thumbnail;->hashCodePossibleNulls(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/api/gbase/client/Thumbnail;->hashCodePossibleNulls(Ljava/lang/Object;)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/api/gbase/client/Thumbnail;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/gbase/client/Thumbnail;->hashCodePossibleNulls(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isSizeSpecified()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/api/gbase/client/Thumbnail;->url:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thumbnail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/gbase/client/Thumbnail;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/Thumbnail;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/Thumbnail;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
