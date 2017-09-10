.class final enum Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
.super Ljava/lang/Enum;
.source "MdnsRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

.field public static final enum A:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

.field public static final enum PTR:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

.field public static final enum SRV:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

.field public static final enum TXT:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;


# instance fields
.field private final val:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    const-string v1, "A"

    invoke-direct {v0, v1, v4, v3}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->A:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    .line 50
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    const-string v1, "PTR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->PTR:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    .line 52
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    const-string v1, "TXT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->TXT:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    .line 54
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    const-string v1, "SRV"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v6, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->SRV:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->A:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->PTR:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->TXT:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->SRV:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "val"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-byte p3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->val:B

    .line 66
    return-void
.end method

.method static get(I)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 75
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->values()[Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 77
    .local v0, "type":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    iget-byte v4, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->val:B

    if-ne v4, p0, :cond_0

    .line 82
    .end local v0    # "type":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    :goto_1
    return-object v0

    .line 75
    .restart local v0    # "type":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "type":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    return-object v0
.end method
