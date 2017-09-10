.class public final Lcom/google/gdata/util/common/logging/FormattingLogger;
.super Ljava/lang/Object;
.source "FormattingLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    }
.end annotation


# static fields
.field private static final LOGGER_CLASS_NAME:Ljava/lang/String;


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/util/common/logging/FormattingLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/logging/FormattingLogger;->LOGGER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;-><init>(Ljava/util/logging/Logger;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;-><init>(Ljava/util/logging/Logger;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 2
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "logger is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    .line 252
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/gdata/util/common/logging/FormattingLogger;->LOGGER_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/google/gdata/util/common/logging/FormattingLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/gdata/util/common/logging/FormattingLogger;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->getLogger(Ljava/lang/String;)Lcom/google/gdata/util/common/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/google/gdata/util/common/logging/FormattingLogger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger;

    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

.method private nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V
    .locals 1
    .param p1, "record"    # Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setLoggerName(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/LogRecord;)V

    .line 312
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 610
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    return-void
.end method

.method public varargs config(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 837
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    return-void
.end method

.method public configfmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 727
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    return-void
.end method

.method public varargs configfmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 947
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    return-void
.end method

.method public varargs configfmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1062
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 625
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    return-void
.end method

.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 851
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method public finefmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 745
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    return-void
.end method

.method public varargs finefmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 964
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    return-void
.end method

.method public varargs finefmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1078
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 640
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    return-void
.end method

.method public varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 865
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    return-void
.end method

.method public finerfmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 763
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    return-void
.end method

.method public varargs finerfmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 981
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    return-void
.end method

.method public varargs finerfmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1094
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 655
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    return-void
.end method

.method public varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 879
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    return-void
.end method

.method public finestfmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 781
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    return-void
.end method

.method public varargs finestfmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 998
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    return-void
.end method

.method public varargs finestfmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1110
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    return-void
.end method

.method public getFormattingLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 595
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 823
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    return-void
.end method

.method public infofmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 709
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method public varargs infofmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 930
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    return-void
.end method

.method public varargs infofmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1046
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 284
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 285
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public varargs log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 271
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setParameters([Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public varargs log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "thrown"    # Ljava/lang/Throwable;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 300
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    if-eqz p2, :cond_1

    .line 301
    invoke-virtual {v0, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 303
    :cond_1
    if-eqz p4, :cond_2

    array-length v1, p4

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {v0, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setParameters([Ljava/lang/Object;)V

    .line 306
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 3
    .param p1, "lr"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 320
    instance-of v1, p1, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    if-nez v1, :cond_0

    .line 326
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 327
    .local v0, "rec":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 330
    .end local v0    # "rec":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 331
    return-void
.end method

.method public logfmt(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 451
    iget-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {v0, p1, p2, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 454
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    .line 456
    .end local v0    # "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    :cond_0
    return-void
.end method

.method public varargs logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    .line 435
    .end local v0    # "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    :cond_0
    return-void
.end method

.method public varargs logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "thrown"    # Ljava/lang/Throwable;
    .param p3, "fmt"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 476
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    .line 478
    .end local v0    # "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    :cond_0
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClassName"    # Ljava/lang/String;
    .param p3, "sourceMethodName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0, p5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 373
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public varargs logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClassName"    # Ljava/lang/String;
    .param p3, "sourceMethodName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    if-eqz p5, :cond_1

    array-length v1, p5

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {v0, p5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setParameters([Ljava/lang/Object;)V

    .line 352
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public varargs logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClassName"    # Ljava/lang/String;
    .param p3, "sourceMethodName"    # Ljava/lang/String;
    .param p4, "thrown"    # Ljava/lang/Throwable;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    invoke-direct {v0, p1, p5, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    if-eqz p4, :cond_1

    .line 395
    invoke-virtual {v0, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 397
    :cond_1
    if-eqz p6, :cond_2

    array-length v1, p6

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v0, p6}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setParameters([Ljava/lang/Object;)V

    .line 400
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public logpfmt(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClassName"    # Ljava/lang/String;
    .param p3, "sourceMethodName"    # Ljava/lang/String;
    .param p4, "fmt"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    :goto_0
    return-void

    .line 522
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v3, v1

    move-object v1, p1

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-virtual {v0, p5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setThrown(Ljava/lang/Throwable;)V

    .line 526
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public varargs logpfmt(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClassName"    # Ljava/lang/String;
    .param p3, "sourceMethodName"    # Ljava/lang/String;
    .param p4, "fmt"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;-><init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .local v0, "record":Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger;->nameAndLog(Lcom/google/gdata/util/common/logging/FormattingLogger$Record;)V

    goto :goto_0
.end method

.method public varargs logpfmt(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClassName"    # Ljava/lang/String;
    .param p3, "sourceMethodName"    # Ljava/lang/String;
    .param p4, "thrown"    # Ljava/lang/Throwable;
    .param p5, "fmt"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/Object;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {p5, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    :cond_0
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 416
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 565
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 795
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    return-void
.end method

.method public severefmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 673
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    return-void
.end method

.method public varargs severefmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 896
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    return-void
.end method

.method public varargs severefmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1014
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 580
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 809
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    return-void
.end method

.method public warningfmt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 691
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    return-void
.end method

.method public varargs warningfmt(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 913
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    return-void
.end method

.method public varargs warningfmt(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1030
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger;->logfmt(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    return-void
.end method
