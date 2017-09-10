.class public final enum Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;
.super Ljava/lang/Enum;
.source "XmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/xml/XmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WriterFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

.field public static final enum EXPAND_EMPTY:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

.field public static final enum PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

.field public static final enum WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    const-string v1, "WRITE_HEADER"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    .line 126
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    const-string v1, "EXPAND_EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->EXPAND_EMPTY:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    .line 129
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    const-string v1, "PRETTY_PRINT"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->EXPAND_EMPTY:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->$VALUES:[Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->$VALUES:[Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-virtual {v0}, [Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    return-object v0
.end method
