.class final enum Lcom/google/gdata/model/ElementIterator$Mode;
.super Ljava/lang/Enum;
.source "ElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/ElementIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/model/ElementIterator$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/model/ElementIterator$Mode;

.field public static final enum DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

.field public static final enum DONE:Lcom/google/gdata/model/ElementIterator$Mode;

.field public static final enum UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/gdata/model/ElementIterator$Mode;

    const-string v1, "DECLARED"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/ElementIterator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    new-instance v0, Lcom/google/gdata/model/ElementIterator$Mode;

    const-string v1, "UNDECLARED"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/model/ElementIterator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    new-instance v0, Lcom/google/gdata/model/ElementIterator$Mode;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/model/ElementIterator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->DONE:Lcom/google/gdata/model/ElementIterator$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/model/ElementIterator$Mode;

    sget-object v1, Lcom/google/gdata/model/ElementIterator$Mode;->DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/model/ElementIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/model/ElementIterator$Mode;->DONE:Lcom/google/gdata/model/ElementIterator$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->$VALUES:[Lcom/google/gdata/model/ElementIterator$Mode;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/model/ElementIterator$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/model/ElementIterator$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementIterator$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/model/ElementIterator$Mode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->$VALUES:[Lcom/google/gdata/model/ElementIterator$Mode;

    invoke-virtual {v0}, [Lcom/google/gdata/model/ElementIterator$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/model/ElementIterator$Mode;

    return-object v0
.end method
