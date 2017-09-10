.class public abstract Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field protected final dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V
    .locals 0
    .param p1, "fDataParser"    # Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    .line 36
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->dump()V

    .line 45
    return-void
.end method

.method public abstract readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
