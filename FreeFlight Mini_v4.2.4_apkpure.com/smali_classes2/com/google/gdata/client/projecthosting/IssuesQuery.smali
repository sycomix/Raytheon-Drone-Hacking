.class public Lcom/google/gdata/client/projecthosting/IssuesQuery;
.super Lcom/google/gdata/client/Query;
.source "IssuesQuery.java"


# instance fields
.field private can:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private label:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getCan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->can:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setCan(Ljava/lang/String;)V
    .locals 1
    .param p1, "can"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->can:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 76
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->can:Ljava/lang/String;

    .line 77
    const-string v0, "can"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/projecthosting/IssuesQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->can:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->id:Ljava/lang/Integer;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 100
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->id:Ljava/lang/Integer;

    .line 101
    const-string v1, "id"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/projecthosting/IssuesQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->label:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 124
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->label:Ljava/lang/String;

    .line 125
    const-string v0, "label"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/projecthosting/IssuesQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->owner:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 149
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->owner:Ljava/lang/String;

    .line 150
    const-string v0, "owner"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/projecthosting/IssuesQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->owner:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->status:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 174
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->status:Ljava/lang/String;

    .line 175
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/projecthosting/IssuesQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/IssuesQuery;->status:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
