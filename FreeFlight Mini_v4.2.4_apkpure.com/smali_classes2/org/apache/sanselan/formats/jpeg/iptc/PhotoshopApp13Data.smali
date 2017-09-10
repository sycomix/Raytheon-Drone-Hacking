.class public Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
.super Ljava/lang/Object;
.source "PhotoshopApp13Data.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# instance fields
.field private final rawBlocks:Ljava/util/List;

.field private final records:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "records"    # Ljava/util/List;
    .param p2, "rawBlocks"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->records:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getNonIptcBlocks()Ljava/util/List;
    .locals 4

    .prologue
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 49
    iget-object v3, p0, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    .line 50
    .local v0, "block":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->isIPTCBlock()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "block":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    :cond_1
    return-object v2
.end method

.method public getRawBlocks()Ljava/util/List;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->records:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
