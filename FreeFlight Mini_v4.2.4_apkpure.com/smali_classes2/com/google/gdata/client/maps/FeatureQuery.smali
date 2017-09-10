.class public Lcom/google/gdata/client/maps/FeatureQuery;
.super Lcom/google/gdata/client/Query;
.source "FeatureQuery.java"


# instance fields
.field private showDeleted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getShowDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gdata/client/maps/FeatureQuery;->showDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setShowDeleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "showDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/gdata/client/maps/FeatureQuery;->showDeleted:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 65
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/maps/FeatureQuery;->showDeleted:Ljava/lang/Boolean;

    .line 66
    const-string v1, "showdeleted"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/maps/FeatureQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/maps/FeatureQuery;->showDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
