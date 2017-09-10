.class public Lcom/google/gdata/client/sites/ContentQuery;
.super Lcom/google/gdata/client/Query;
.source "ContentQuery.java"


# instance fields
.field private ancestor:Ljava/lang/String;

.field private includeDeleted:Ljava/lang/Boolean;

.field private includeDrafts:Ljava/lang/Boolean;

.field private kind:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getAncestor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->ancestor:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIncludeDrafts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDrafts:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setAncestor(Ljava/lang/String;)V
    .locals 1
    .param p1, "ancestor"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->ancestor:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 80
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ContentQuery;->ancestor:Ljava/lang/String;

    .line 81
    const-string v0, "ancestor"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/sites/ContentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->ancestor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setIncludeDeleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "includeDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDeleted:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDeleted:Ljava/lang/Boolean;

    .line 107
    const-string v1, "include-deleted"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/sites/ContentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setIncludeDrafts(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "includeDrafts"    # Ljava/lang/Boolean;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDrafts:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 133
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDrafts:Ljava/lang/Boolean;

    .line 134
    const-string v1, "include-drafts"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/sites/ContentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->includeDrafts:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->kind:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 159
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ContentQuery;->kind:Ljava/lang/String;

    .line 160
    const-string v0, "kind"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/sites/ContentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->kind:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->parent:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 184
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ContentQuery;->parent:Ljava/lang/String;

    .line 185
    const-string v0, "parent"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/sites/ContentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->parent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 209
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sites/ContentQuery;->path:Ljava/lang/String;

    .line 210
    const-string v0, "path"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/sites/ContentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sites/ContentQuery;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
