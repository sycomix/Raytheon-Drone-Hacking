.class public Lcom/google/gdata/client/projecthosting/ProjectsQuery;
.super Lcom/google/gdata/client/Query;
.source "ProjectsQuery.java"


# instance fields
.field private label:Ljava/lang/String;

.field private orderby:Ljava/lang/String;


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
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderby()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->orderby:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->label:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 66
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->label:Ljava/lang/String;

    .line 67
    const-string v0, "label"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setOrderby(Ljava/lang/String;)V
    .locals 1
    .param p1, "orderby"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->orderby:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 92
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->orderby:Ljava/lang/String;

    .line 93
    const-string v0, "orderby"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/projecthosting/ProjectsQuery;->orderby:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
