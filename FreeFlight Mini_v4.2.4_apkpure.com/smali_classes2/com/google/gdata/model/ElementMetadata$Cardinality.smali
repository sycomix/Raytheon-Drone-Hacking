.class public final enum Lcom/google/gdata/model/ElementMetadata$Cardinality;
.super Ljava/lang/Enum;
.source "ElementMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/ElementMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cardinality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/model/ElementMetadata$Cardinality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field public static final enum MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field public static final enum SET:Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field public static final enum SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/ElementMetadata$Cardinality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    new-instance v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    const-string v1, "MULTIPLE"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/model/ElementMetadata$Cardinality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    new-instance v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    const-string v1, "SET"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/model/ElementMetadata$Cardinality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SET:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/model/ElementMetadata$Cardinality;

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SET:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;->$VALUES:[Lcom/google/gdata/model/ElementMetadata$Cardinality;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/gdata/model/ElementMetadata$Cardinality;->$VALUES:[Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-virtual {v0}, [Lcom/google/gdata/model/ElementMetadata$Cardinality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/model/ElementMetadata$Cardinality;

    return-object v0
.end method
