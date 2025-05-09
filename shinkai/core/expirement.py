import json

from abc import ABC, abstractmethod
from pathlib import Path
from collections.abc import MutableMapping
from rich import print
from rich.panel import Panel
from datasets import DatasetDict

class ExpirementMetrics(MutableMapping):
    """A mapping‑like container that stores experiment metrics along with a *title* and *description*.

    Examples
    --------
    >>> metrics = ExpirementMetrics(
    ...     title="Run #42",
    ...     description="Baseline model on CIFAR‑10",
    ...     accuracy=0.91,
    ...     loss=0.37,
    ... )
    >>> metrics["precision"] = 0.89  # dict‑style assignment
    >>> metrics.save_json("results/run‑42.json")
    """
    
    def __init__(self, title = None, description = None, **initialMetrics):
        self.title = title
        self.description = description
        self._metrics = dict(initialMetrics)
    
    def __getitem__(self, key):
        return self._metrics[key] 
    
    def __setitem__(self, key, value):
        self._metrics[key] = value
    
    def __delitem__(self, key):
        del self._metrics[key]
    
    def __iter__(self):
        return iter(self._metrics)
    
    def __len__(self):
        return len(self._metrics)
    
    def __repr__(self):
        cls = self.__class__.__name__
        return (
            f"{cls}(title={self.title!r}, description={self.description!r}, "
            f"metrics={self._metrics!r})"
        )
    
    def save_json(self, path: str | Path, *, indent: int = 2) -> Path:  # noqa: D401
        """Serialize the metrics to *path* in JSON format.

        The parent directories are created if they do not exist.  Returns the
        absolute :class:`~pathlib.Path` to the written file so you can log or
        print it if desired.
        """
        path = Path(path).expanduser().resolve()
        path.parent.mkdir(parents=True, exist_ok=True)

        with path.open("w", encoding="utf-8") as f:
            json.dump(self.to_dict(), f, ensure_ascii=False, indent=indent)

        return path
    
    def to_dict(self):
        """Return a plain‑`dict` suitable for JSON serialization."""
        return {
            "title": self.title,
            "description": self.description,
            "metrics": self._metrics,
        }
    
    def update(self, /, **kwargs):
        """In‑place update of multiple metric values."""
        self._metrics.update(kwargs)
    
    def showOverview(self):
        """Pretty-print."""
        emoji = "📊"
        print(Panel(
            f"[bold blue]{self.title}[/bold blue]\n[italic]{self.description}[/italic]",
            title=f"{emoji} Experiment Summary",
            expand=False,
        ))
    

class Expirement(ABC):
    """Abstract base class for defining experiments.

    This class provides a foundation for creating experiment-related classes,
    ensuring a standardized structure with metrics tracking and a required
    `run` method for experiment execution.

    Attributes:
        metrics (ExpirementMetrics): An instance of ExpirementMetrics for
            tracking experiment results and performance indicators.
    """

    @abstractmethod
    def __init__(self, metrics = ExpirementMetrics()):
        """Initialize an Expirement instance.

        Creates an instance of ExpirementMetrics and assigns it to the
        `metrics` attribute.
        """
        self.metrics = metrics
    
    @abstractmethod
    def run(self, dataset: DatasetDict | None):
        """Run the experiment.

        This abstract method must be implemented by subclasses to define
        the core logic of the experiment. It may record results to
        `self.metrics` and return experiment outcomes.

        Returns:
            Subclasses determine the return type (e.g., dict, bool, None).
        """
        pass