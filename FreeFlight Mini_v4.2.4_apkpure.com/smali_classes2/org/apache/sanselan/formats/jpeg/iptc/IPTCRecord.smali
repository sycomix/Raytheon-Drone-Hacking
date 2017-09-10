.class public Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
.super Ljava/lang/Object;
.source "IPTCRecord.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public final iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord$1;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord$1;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;Ljava/lang/String;)V
    .locals 0
    .param p1, "iptcType"    # Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    .line 32
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->value:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getIptcTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget-object v0, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->value:Ljava/lang/String;

    return-object v0
.end method
