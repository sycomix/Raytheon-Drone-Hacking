.class public final enum Lcom/google/gdata/data/extensions/Reminder$Method;
.super Ljava/lang/Enum;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/extensions/Reminder$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/extensions/Reminder$Method;

.field public static final enum ALERT:Lcom/google/gdata/data/extensions/Reminder$Method;

.field public static final enum ALL:Lcom/google/gdata/data/extensions/Reminder$Method;

.field public static final enum EMAIL:Lcom/google/gdata/data/extensions/Reminder$Method;

.field public static final enum NONE:Lcom/google/gdata/data/extensions/Reminder$Method;

.field public static final enum SMS:Lcom/google/gdata/data/extensions/Reminder$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/extensions/Reminder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->ALERT:Lcom/google/gdata/data/extensions/Reminder$Method;

    .line 97
    new-instance v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/extensions/Reminder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->ALL:Lcom/google/gdata/data/extensions/Reminder$Method;

    .line 98
    new-instance v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/extensions/Reminder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->EMAIL:Lcom/google/gdata/data/extensions/Reminder$Method;

    .line 99
    new-instance v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/extensions/Reminder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->NONE:Lcom/google/gdata/data/extensions/Reminder$Method;

    .line 100
    new-instance v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/extensions/Reminder$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->SMS:Lcom/google/gdata/data/extensions/Reminder$Method;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/extensions/Reminder$Method;

    sget-object v1, Lcom/google/gdata/data/extensions/Reminder$Method;->ALERT:Lcom/google/gdata/data/extensions/Reminder$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/extensions/Reminder$Method;->ALL:Lcom/google/gdata/data/extensions/Reminder$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/extensions/Reminder$Method;->EMAIL:Lcom/google/gdata/data/extensions/Reminder$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/extensions/Reminder$Method;->NONE:Lcom/google/gdata/data/extensions/Reminder$Method;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/extensions/Reminder$Method;->SMS:Lcom/google/gdata/data/extensions/Reminder$Method;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->$VALUES:[Lcom/google/gdata/data/extensions/Reminder$Method;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/gdata/data/extensions/Reminder$Method;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad input for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const-class v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/extensions/Reminder$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Reminder$Method;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/extensions/Reminder$Method;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/gdata/data/extensions/Reminder$Method;->$VALUES:[Lcom/google/gdata/data/extensions/Reminder$Method;

    invoke-virtual {v0}, [Lcom/google/gdata/data/extensions/Reminder$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/extensions/Reminder$Method;

    return-object v0
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Reminder$Method;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
