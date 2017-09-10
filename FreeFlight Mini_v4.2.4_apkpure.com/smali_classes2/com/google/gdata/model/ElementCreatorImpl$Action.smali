.class final enum Lcom/google/gdata/model/ElementCreatorImpl$Action;
.super Ljava/lang/Enum;
.source "ElementCreatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/ElementCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/model/ElementCreatorImpl$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/model/ElementCreatorImpl$Action;

.field public static final enum ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

.field public static final enum REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/ElementCreatorImpl$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    new-instance v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/model/ElementCreatorImpl$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/model/ElementCreatorImpl$Action;

    sget-object v1, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/model/ElementCreatorImpl$Action;->REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->$VALUES:[Lcom/google/gdata/model/ElementCreatorImpl$Action;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/model/ElementCreatorImpl$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/model/ElementCreatorImpl$Action;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->$VALUES:[Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-virtual {v0}, [Lcom/google/gdata/model/ElementCreatorImpl$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/model/ElementCreatorImpl$Action;

    return-object v0
.end method
