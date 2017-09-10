.class public abstract Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;
.super Ljava/lang/Object;
.source "IPTCTypeLookup.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# static fields
.field private static final IPTC_TYPE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPES:[Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 30
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPES:[Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    aget-object v1, v3, v0

    .line 31
    .local v1, "iptcType":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    new-instance v2, Ljava/lang/Integer;

    iget v3, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 32
    .local v2, "key":Ljava/lang/Integer;
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "iptcType":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIptcType(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 39
    .local v0, "key":Ljava/lang/Integer;
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {p0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->getUnknown(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    goto :goto_0
.end method
