.class final enum Lcom/google/api/gbase/client/ConversionUtil$ShippingField;
.super Ljava/lang/Enum;
.source "ConversionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/ConversionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShippingField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/gbase/client/ConversionUtil$ShippingField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

.field public static final enum Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

.field public static final enum Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

.field public static final enum Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

.field public static final enum Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;


# instance fields
.field private final attrName:Ljava/lang/String;

.field private final elemName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    const-string v1, "Country"

    const-string v2, "country"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    .line 56
    new-instance v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    const-string v1, "Region"

    const-string v2, "region"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    .line 57
    new-instance v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    const-string v1, "Price"

    const-string v2, "price"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    .line 58
    new-instance v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    const-string v1, "Service"

    const-string v2, "service"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    sget-object v1, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->$VALUES:[Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p3, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->elemName:Ljava/lang/String;

    .line 65
    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->attrName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gbase/client/ConversionUtil$ShippingField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    return-object v0
.end method

.method public static values()[Lcom/google/api/gbase/client/ConversionUtil$ShippingField;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->$VALUES:[Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, [Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    return-object v0
.end method


# virtual methods
.method public getAttrName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->attrName:Ljava/lang/String;

    return-object v0
.end method

.method public getElemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->elemName:Ljava/lang/String;

    return-object v0
.end method
