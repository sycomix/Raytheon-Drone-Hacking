.class public Lcom/google/gdata/client/gtt/DocumentQuery;
.super Lcom/google/gdata/client/Query;
.source "DocumentQuery.java"


# instance fields
.field private onlydeleted:Ljava/lang/Boolean;

.field private sharedWithEmailId:Ljava/lang/String;

.field private showdeleted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getOnlydeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->onlydeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSharedWithEmailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->sharedWithEmailId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowdeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->showdeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setOnlydeleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "onlydeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->onlydeleted:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 71
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->onlydeleted:Ljava/lang/Boolean;

    .line 72
    const-string v1, "onlydeleted"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/gtt/DocumentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->onlydeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setSharedWithEmailId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedWithEmailId"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->sharedWithEmailId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 98
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->sharedWithEmailId:Ljava/lang/String;

    .line 99
    const-string v0, "sharedwith"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/gtt/DocumentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->sharedWithEmailId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setShowdeleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "showdeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->showdeleted:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 124
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->showdeleted:Ljava/lang/Boolean;

    .line 125
    const-string v1, "showdeleted"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/gtt/DocumentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/gtt/DocumentQuery;->showdeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
