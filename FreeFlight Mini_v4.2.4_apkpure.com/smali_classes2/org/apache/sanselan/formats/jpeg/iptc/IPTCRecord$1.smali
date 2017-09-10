.class final Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord$1;
.super Ljava/lang/Object;
.source "IPTCRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .local v0, "e1":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    move-object v1, p2

    .line 49
    check-cast v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 50
    .local v1, "e2":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    iget-object v2, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v2, v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    iget-object v3, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v3, v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sub-int/2addr v2, v3

    return v2
.end method
