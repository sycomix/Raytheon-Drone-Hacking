.class public Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
.super Ljava/lang/Object;
.source "IPTCType.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    .line 29
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getUnknown(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 39
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    const-string v1, "Unknown"

    invoke-direct {v0, p0, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
