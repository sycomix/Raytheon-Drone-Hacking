.class public Lcom/google/gdata/client/maps/MapQuery;
.super Lcom/google/gdata/client/Query;
.source "MapQuery.java"


# instance fields
.field private prevId:Ljava/lang/String;

.field private showDeleted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getPrevId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/client/maps/MapQuery;->prevId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/client/maps/MapQuery;->showDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setPrevId(Ljava/lang/String;)V
    .locals 1
    .param p1, "prevId"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/client/maps/MapQuery;->prevId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 67
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/maps/MapQuery;->prevId:Ljava/lang/String;

    .line 68
    const-string v0, "previd"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/maps/MapQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/maps/MapQuery;->prevId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setShowDeleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "showDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/client/maps/MapQuery;->showDeleted:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 93
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/maps/MapQuery;->showDeleted:Ljava/lang/Boolean;

    .line 94
    const-string v1, "showdeleted"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/maps/MapQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/maps/MapQuery;->showDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
