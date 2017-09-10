.class public final enum Lcom/google/api/gbase/client/GmPublishingPriority$Value;
.super Ljava/lang/Enum;
.source "GmPublishingPriority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/GmPublishingPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/gbase/client/GmPublishingPriority$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/gbase/client/GmPublishingPriority$Value;

.field public static final enum HIGH:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

.field public static final enum LOW:Lcom/google/api/gbase/client/GmPublishingPriority$Value;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    const-string v1, "HIGH"

    const-string v2, "high"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->HIGH:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .line 53
    new-instance v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    const-string v1, "LOW"

    const-string v2, "low"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->LOW:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    sget-object v1, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->HIGH:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->LOW:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->$VALUES:[Lcom/google/api/gbase/client/GmPublishingPriority$Value;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->value:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static getByText(Ljava/lang/String;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    .locals 5
    .param p0, "textValue"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->values()[Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 77
    .local v3, "pipeline":Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    invoke-virtual {v3}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->getTextValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    .end local v3    # "pipeline":Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    :goto_1
    return-object v3

    .line 76
    .restart local v3    # "pipeline":Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "pipeline":Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->$VALUES:[Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    invoke-virtual {v0}, [Lcom/google/api/gbase/client/GmPublishingPriority$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    return-object v0
.end method


# virtual methods
.method public getTextValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->value:Ljava/lang/String;

    return-object v0
.end method
