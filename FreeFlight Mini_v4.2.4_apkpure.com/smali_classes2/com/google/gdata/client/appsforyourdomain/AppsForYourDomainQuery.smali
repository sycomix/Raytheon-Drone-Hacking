.class public Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;
.super Lcom/google/gdata/client/Query;
.source "AppsForYourDomainQuery.java"


# static fields
.field public static final RECIPIENT:Ljava/lang/String; = "recipient"

.field public static final START_EMAILLIST_NAME:Ljava/lang/String; = "startEmailListName"

.field public static final START_NICKNAME:Ljava/lang/String; = "startNickname"

.field public static final START_RECIPIENT:Ljava/lang/String; = "startRecipient"

.field public static final START_USERNAME:Ljava/lang/String; = "startUsername"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameterKey"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v1}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "recipient"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartEmailListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "startEmailListName"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "startNickname"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "startRecipient"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "startUsername"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "customParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    .line 178
    .local v1, "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v1    # "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    :cond_0
    if-eqz p2, :cond_1

    .line 183
    new-instance v3, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-direct {v3, p1, p2}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 1
    .param p1, "recipient"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "recipient"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setStartEmailListName(Ljava/lang/String;)V
    .locals 1
    .param p1, "startEmailListName"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "startEmailListName"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setStartNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "startNickname"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "startNickname"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setStartRecipient(Ljava/lang/String;)V
    .locals 1
    .param p1, "startRecipient"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "startRecipient"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setStartUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "startUsername"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "startUsername"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
