.class public Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;
.super Ljava/lang/Object;
.source "MdnsSrvData.java"


# instance fields
.field private final port:I

.field private final target:Ljava/lang/String;

.field private final ttl:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "ttl"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->port:I

    .line 55
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->target:Ljava/lang/String;

    .line 56
    iput-wide p3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->ttl:J

    .line 57
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->port:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->ttl:J

    return-wide v0
.end method
