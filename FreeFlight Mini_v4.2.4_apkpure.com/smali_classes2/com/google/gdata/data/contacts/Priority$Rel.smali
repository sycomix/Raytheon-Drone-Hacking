.class public final enum Lcom/google/gdata/data/contacts/Priority$Rel;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/Priority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/contacts/Priority$Rel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/contacts/Priority$Rel;

.field public static final enum HIGH:Lcom/google/gdata/data/contacts/Priority$Rel;

.field public static final enum LOW:Lcom/google/gdata/data/contacts/Priority$Rel;

.field public static final enum NORMAL:Lcom/google/gdata/data/contacts/Priority$Rel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/gdata/data/contacts/Priority$Rel;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/contacts/Priority$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Priority$Rel;->HIGH:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 56
    new-instance v0, Lcom/google/gdata/data/contacts/Priority$Rel;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/contacts/Priority$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Priority$Rel;->LOW:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 59
    new-instance v0, Lcom/google/gdata/data/contacts/Priority$Rel;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/contacts/Priority$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Priority$Rel;->NORMAL:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/data/contacts/Priority$Rel;

    sget-object v1, Lcom/google/gdata/data/contacts/Priority$Rel;->HIGH:Lcom/google/gdata/data/contacts/Priority$Rel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/contacts/Priority$Rel;->LOW:Lcom/google/gdata/data/contacts/Priority$Rel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/contacts/Priority$Rel;->NORMAL:Lcom/google/gdata/data/contacts/Priority$Rel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/data/contacts/Priority$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Priority$Rel;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/contacts/Priority$Rel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/google/gdata/data/contacts/Priority$Rel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Priority$Rel;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/contacts/Priority$Rel;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/gdata/data/contacts/Priority$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Priority$Rel;

    invoke-virtual {v0}, [Lcom/google/gdata/data/contacts/Priority$Rel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/contacts/Priority$Rel;

    return-object v0
.end method
