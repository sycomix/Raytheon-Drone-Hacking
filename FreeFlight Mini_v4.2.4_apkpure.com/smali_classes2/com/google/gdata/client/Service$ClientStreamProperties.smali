.class public abstract Lcom/google/gdata/client/Service$ClientStreamProperties;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/google/gdata/wireformats/StreamProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ClientStreamProperties"
.end annotation


# instance fields
.field protected final queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

.field protected final req:Lcom/google/gdata/client/Service$GDataRequest;

.field final synthetic this$0:Lcom/google/gdata/client/Service;


# direct methods
.method protected constructor <init>(Lcom/google/gdata/client/Service;)V
    .locals 1

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1844
    sget-object v0, Lcom/google/gdata/util/common/net/UriParameterMap;->EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

    .line 1845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->req:Lcom/google/gdata/client/Service$GDataRequest;

    .line 1846
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;)V
    .locals 1
    .param p2, "req"    # Lcom/google/gdata/client/Service$GDataRequest;

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1839
    invoke-static {p2}, Lcom/google/gdata/client/Service;->access$000(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

    .line 1840
    iput-object p2, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->req:Lcom/google/gdata/client/Service$GDataRequest;

    .line 1841
    return-void
.end method


# virtual methods
.method protected getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 4

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

    const-string v3, "alt"

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/net/UriParameterMap;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, "altName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 1905
    .local v0, "altFormat":Lcom/google/gdata/wireformats/AltFormat;
    if-eqz v0, :cond_0

    .end local v0    # "altFormat":Lcom/google/gdata/wireformats/AltFormat;
    :goto_0
    return-object v0

    .restart local v0    # "altFormat":Lcom/google/gdata/wireformats/AltFormat;
    :cond_0
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    goto :goto_0
.end method

.method public getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-virtual {v0}, Lcom/google/gdata/client/Service;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-virtual {v0}, Lcom/google/gdata/client/Service;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    return-object v0
.end method

.method public getGDataRequest()Lcom/google/gdata/client/Service$GDataRequest;
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->req:Lcom/google/gdata/client/Service$GDataRequest;

    return-object v0
.end method

.method protected getMetadataContext()Lcom/google/gdata/model/MetadataContext;
    .locals 3

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getAltFormat()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-virtual {v2}, Lcom/google/gdata/client/Service;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/MetadataContext;->forContext(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    return-object v0
.end method

.method protected getParameterMap()Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

    return-object v0
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParameterNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->queryMap:Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientStreamProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-virtual {v0}, Lcom/google/gdata/client/Service;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method public isPartial()Z
    .locals 1

    .prologue
    .line 1861
    const/4 v0, 0x0

    return v0
.end method
