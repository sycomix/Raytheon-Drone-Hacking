.class public final Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;
.super Lorg/apache/sanselan/formats/tiff/TiffElement;
.source "TiffField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OversizeValueElement"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/tiff/TiffField;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/TiffField;II)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;->this$0:Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 82
    invoke-direct {p0, p2, p3}, Lorg/apache/sanselan/formats/tiff/TiffElement;-><init>(II)V

    .line 83
    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OversizeValueElement, tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;->this$0:Lorg/apache/sanselan/formats/tiff/TiffField;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fieldType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;->this$0:Lorg/apache/sanselan/formats/tiff/TiffField;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
