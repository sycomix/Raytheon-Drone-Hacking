.class public Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;
.super Ljava/lang/Object;
.source "MdnsRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    }
.end annotation


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final type:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->name:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->type:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    instance-of v3, p1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    .line 119
    .local v0, "mdnsEntry":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->type:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    iget-object v4, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->type:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getType()Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->type:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 129
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;->type:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 130
    return v0
.end method
