.class public final enum Lcom/google/gdata/data/gtt/DocumentSource$Type;
.super Ljava/lang/Enum;
.source "DocumentSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/gtt/DocumentSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/gtt/DocumentSource$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum AEA:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum AES:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum DOC:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum HTML:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum KNOL:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum ODT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum PLAINTEXT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum RTF:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum SRT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum SUB:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field public static final enum WIKI:Lcom/google/gdata/data/gtt/DocumentSource$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "AEA"

    const-string v2, "aea"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->AEA:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 66
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "AES"

    const-string v2, "aes"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->AES:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 69
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "DOC"

    const-string v2, "doc"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->DOC:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 72
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "HTML"

    const-string v2, "html"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->HTML:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 75
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "KNOL"

    const-string v2, "knol"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->KNOL:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 78
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "ODT"

    const/4 v2, 0x5

    const-string v3, "odt"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->ODT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 81
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "PLAINTEXT"

    const/4 v2, 0x6

    const-string v3, "plainText"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->PLAINTEXT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 84
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "RTF"

    const/4 v2, 0x7

    const-string v3, "rtf"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->RTF:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 87
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "SRT"

    const/16 v2, 0x8

    const-string v3, "srt"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->SRT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 90
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "SUB"

    const/16 v2, 0x9

    const-string v3, "sub"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->SUB:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 93
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const-string v1, "WIKI"

    const/16 v2, 0xa

    const-string v3, "wiki"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/gtt/DocumentSource$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->WIKI:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 60
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/gdata/data/gtt/DocumentSource$Type;

    sget-object v1, Lcom/google/gdata/data/gtt/DocumentSource$Type;->AEA:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/gtt/DocumentSource$Type;->AES:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/gtt/DocumentSource$Type;->DOC:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/gtt/DocumentSource$Type;->HTML:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/data/gtt/DocumentSource$Type;->KNOL:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource$Type;->ODT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource$Type;->PLAINTEXT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource$Type;->RTF:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource$Type;->SRT:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource$Type;->SUB:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource$Type;->WIKI:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->$VALUES:[Lcom/google/gdata/data/gtt/DocumentSource$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/gtt/DocumentSource$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/gtt/DocumentSource$Type;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->$VALUES:[Lcom/google/gdata/data/gtt/DocumentSource$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/gtt/DocumentSource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/gtt/DocumentSource$Type;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource$Type;->value:Ljava/lang/String;

    return-object v0
.end method
