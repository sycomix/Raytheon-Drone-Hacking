.class public Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
.super Lorg/apache/sanselan/common/ImageMetadata;
.source "JpegPhotoshopMetadata.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# instance fields
.field public final photoshopApp13Data:Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 5
    .param p1, "photoshopApp13Data"    # Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/sanselan/common/ImageMetadata;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->photoshopApp13Data:Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    .line 38
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v2

    .line 39
    .local v2, "records":Ljava/util/List;
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 43
    .local v0, "element":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    iget-object v3, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v3, v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sget-object v4, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->IPTC_TYPE_RECORD_VERSION:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v4, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    if-eq v3, v4, :cond_0

    .line 44
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->getIptcTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "element":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 51
    return-void
.end method
