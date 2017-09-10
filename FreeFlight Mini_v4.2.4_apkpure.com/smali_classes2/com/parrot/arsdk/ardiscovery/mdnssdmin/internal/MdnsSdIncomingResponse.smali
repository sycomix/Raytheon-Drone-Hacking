.class public Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;
.super Ljava/lang/Object;
.source "MdnsSdIncomingResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->entries:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;-><init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$1;)V

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->decode([B)V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->entries:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->entries:Ljava/util/Map;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->A:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-direct {v1, p1, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPtr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->entries:Ljava/util/Map;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->PTR:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-direct {v1, p1, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->entries:Ljava/util/Map;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->SRV:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-direct {v1, p1, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;

    return-object v0
.end method

.method public getTexts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->entries:Ljava/util/Map;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->TXT:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-direct {v1, p1, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
