.class public Lcom/google/gdata/client/Service$ClientOutputProperties;
.super Lcom/google/gdata/client/Service$ClientStreamProperties;
.source "Service.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientOutputProperties"
.end annotation


# instance fields
.field private elementMetadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field protected final requestType:Lcom/google/gdata/util/ContentType;

.field final synthetic this$0:Lcom/google/gdata/client/Service;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V
    .locals 1
    .param p2, "req"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p3, "source"    # Ljava/lang/Object;

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->this$0:Lcom/google/gdata/client/Service;

    .line 1986
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/client/Service$ClientStreamProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;)V

    .line 1987
    invoke-interface {p2}, Lcom/google/gdata/client/Service$GDataRequest;->getRequestContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->requestType:Lcom/google/gdata/util/ContentType;

    .line 1988
    invoke-direct {p0, p3}, Lcom/google/gdata/client/Service$ClientOutputProperties;->init(Ljava/lang/Object;)V

    .line 1989
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/util/ContentType;Ljava/lang/Object;)V
    .locals 0
    .param p2, "requestType"    # Lcom/google/gdata/util/ContentType;
    .param p3, "source"    # Ljava/lang/Object;

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-direct {p0, p1}, Lcom/google/gdata/client/Service$ClientStreamProperties;-><init>(Lcom/google/gdata/client/Service;)V

    .line 1992
    iput-object p2, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->requestType:Lcom/google/gdata/util/ContentType;

    .line 1993
    invoke-direct {p0, p3}, Lcom/google/gdata/client/Service$ClientOutputProperties;->init(Ljava/lang/Object;)V

    .line 1994
    return-void
.end method

.method private init(Ljava/lang/Object;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 1997
    instance-of v2, p1, Lcom/google/gdata/model/Element;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1998
    check-cast v0, Lcom/google/gdata/model/Element;

    .line 1999
    .local v0, "element":Lcom/google/gdata/model/Element;
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 2000
    .local v1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v2, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-virtual {v2}, Lcom/google/gdata/client/Service;->getSchema()Lcom/google/gdata/model/Schema;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gdata/client/Service$ClientOutputProperties;->getMetadataContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 2004
    .end local v0    # "element":Lcom/google/gdata/model/Element;
    .end local v1    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :goto_0
    return-void

    .line 2002
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2015
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->requestType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public bridge synthetic getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGDataRequest()Lcom/google/gdata/client/Service$GDataRequest;
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getGDataRequest()Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1979
    invoke-super {p0, p1}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getQueryParameterNames()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getQueryParameterNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->getRequestVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method public getRootMetadata()Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientOutputProperties;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    return-object v0
.end method

.method public bridge synthetic isPartial()Z
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0}, Lcom/google/gdata/client/Service$ClientStreamProperties;->isPartial()Z

    move-result v0

    return v0
.end method
