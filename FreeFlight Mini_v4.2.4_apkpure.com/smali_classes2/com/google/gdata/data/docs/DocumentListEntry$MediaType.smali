.class public final enum Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;
.super Ljava/lang/Enum;
.source "DocumentListEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/docs/DocumentListEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum BMP:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum CSV:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum DOC:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum DOCX:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum GIF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum HTM:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum HTML:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum JPEG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum JPG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum ODS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum ODT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum PDF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum PNG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum PPS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum PPT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum RTF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum SWF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum SXW:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum TAB:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum TSV:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum TXT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum WMF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum XLS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum XLSX:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

.field public static final enum ZIP:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;


# instance fields
.field private mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "JPG"

    const-string v2, "image/jpeg"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->JPG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 63
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "JPEG"

    const-string v2, "image/jpeg"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->JPEG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 64
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "PNG"

    const-string v2, "image/png"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PNG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 65
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "BMP"

    const-string v2, "image/bmp"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->BMP:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 66
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "GIF"

    const-string v2, "image/gif"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->GIF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 67
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "TXT"

    const/4 v2, 0x5

    const-string v3, "text/plain"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->TXT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 68
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "HTML"

    const/4 v2, 0x6

    const-string v3, "text/html"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->HTML:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 69
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "HTM"

    const/4 v2, 0x7

    const-string v3, "text/html"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->HTM:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 70
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "ODT"

    const/16 v2, 0x8

    const-string v3, "application/vnd.oasis.opendocument.text"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->ODT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 71
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "SXW"

    const/16 v2, 0x9

    const-string v3, "application/vnd.sun.xml.writer"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->SXW:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 72
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "DOC"

    const/16 v2, 0xa

    const-string v3, "application/msword"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->DOC:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 73
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "DOCX"

    const/16 v2, 0xb

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->DOCX:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 75
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "RTF"

    const/16 v2, 0xc

    const-string v3, "application/rtf"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->RTF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 76
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "PDF"

    const/16 v2, 0xd

    const-string v3, "application/pdf"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PDF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 77
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "PPS"

    const/16 v2, 0xe

    const-string v3, "application/vnd.ms-powerpoint"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PPS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 78
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "PPT"

    const/16 v2, 0xf

    const-string v3, "application/vnd.ms-powerpoint"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PPT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 79
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "XLS"

    const/16 v2, 0x10

    const-string v3, "application/vnd.ms-excel"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->XLS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 80
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "XLSX"

    const/16 v2, 0x11

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->XLSX:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 81
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "ODS"

    const/16 v2, 0x12

    const-string v3, "application/x-vnd.oasis.opendocument.spreadsheet"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->ODS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 82
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "CSV"

    const/16 v2, 0x13

    const-string v3, "text/csv"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->CSV:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 83
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "TAB"

    const/16 v2, 0x14

    const-string v3, "text/tab-separated-value"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->TAB:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 84
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "TSV"

    const/16 v2, 0x15

    const-string v3, "text/tab-separated-value"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->TSV:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 85
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "SWF"

    const/16 v2, 0x16

    const-string v3, "application/x-shockwave-flash"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->SWF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 86
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "ZIP"

    const/16 v2, 0x17

    const-string v3, "application/zip"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->ZIP:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 87
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    const-string v1, "WMF"

    const/16 v2, 0x18

    const-string v3, "application/x-msmetafile"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->WMF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    .line 61
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->JPG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->JPEG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PNG:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->BMP:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->GIF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->TXT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->HTML:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->HTM:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->ODT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->SXW:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->DOC:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->DOCX:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->RTF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PDF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PPS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->PPT:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->XLS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->XLSX:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->ODS:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->CSV:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->TAB:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->TSV:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->SWF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->ZIP:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->WMF:Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->$VALUES:[Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->mimeType:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static fromFileName(Ljava/lang/String;)Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 101
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 102
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 103
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    move-result-object v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->$VALUES:[Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    invoke-virtual {v0}, [Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->mimeType:Ljava/lang/String;

    return-object v0
.end method
