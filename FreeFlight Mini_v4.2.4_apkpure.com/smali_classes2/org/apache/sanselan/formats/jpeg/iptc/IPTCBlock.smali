.class public Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
.super Ljava/lang/Object;
.source "IPTCBlock.java"


# instance fields
.field public final blockData:[B

.field public final blockNameBytes:[B

.field public final blockType:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0
    .param p1, "blockType"    # I
    .param p2, "blockNameBytes"    # [B
    .param p3, "blockData"    # [B

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    .line 31
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    .line 32
    iput p1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    .line 33
    return-void
.end method


# virtual methods
.method public isIPTCBlock()Z
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    const/16 v1, 0x404

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
