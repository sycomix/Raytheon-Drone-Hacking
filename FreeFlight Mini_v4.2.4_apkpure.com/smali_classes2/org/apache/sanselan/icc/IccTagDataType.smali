.class public abstract Lorg/apache/sanselan/icc/IccTagDataType;
.super Ljava/lang/Object;
.source "IccTagDataType.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final signature:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/sanselan/icc/IccTagDataType;->name:Ljava/lang/String;

    .line 31
    iput p2, p0, Lorg/apache/sanselan/icc/IccTagDataType;->signature:I

    .line 32
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
